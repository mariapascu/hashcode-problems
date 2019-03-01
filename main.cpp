#include <fstream>
#include <iostream>
#include <set>
#include <vector>
#include <string>
#include <utility>
#include <algorithm>
using namespace std;

#define MAX 0x3f3f3f3f

ifstream fin("/Users/LeCezar/Desktop/HashPizza/b.txt");
ofstream fout("/Users/LeCezar/Desktop/HashPizza/output.txt");

struct photo {
    int visited = 0;
    int id = -1;
    char type;
    int no_tags = -1;
    set<string> tags;
};

struct slide {
    int visited = 0;
    photo p1;
    photo p2;
};

int n;
vector<photo> photos;
vector<photo> horizontal, vertical;
vector<slide> slides;
vector<slide> slideshow;

void Read();
void Sort();
void Verticals();
void Horizontals();
int GetScore(slide a, slide b);
void Slides();
void Slideshow();
void Write();

int main() {
    Read();
    Sort();
    Verticals();
    Horizontals();
    Slides();
    Slideshow();
    Write();
    return 0;
}

void Slideshow() {
    int i = 0;
    float contor = 0.0;
    int sol = 0;
    slides[0].visited = 1;
    slideshow.push_back(slides[0]);
    int size = slides.size();

    while (sol != -1) {
        sol = -1;
        int min_inter = -1;
        for (int j = 0; j < slides.size(); j++) {
            if (slides[j].visited == 1) continue;
            int inter = GetScore(slides[i], slides[j]);
            if (inter >= 3) {
                min_inter = inter;
                sol = j;
                break;
            }
            else{

            }
        }
        slideshow.push_back(slides[sol]);
        slides[i].visited = 1;
        slides[sol].visited = 1;
        slides.erase(slides.begin()+sol);
        i = sol;
        contor++;
        cout << (contor*100)/size << "%" << endl;
    }
}

void Slides() {
    sort(slides.begin(), slides.end(), [](const slide & a, const slide & b) {
        set<string> x, y;
        if (a.p2.id == -1) {
            x = a.p1.tags;
        }
        else {
            set_union(a.p1.tags.begin(), a.p1.tags.end(),
                      a.p2.tags.begin(), a.p2.tags.end(),
                      inserter(x, x.begin()));
        }
        if (b.p2.id == -1) {
            y = b.p1.tags;
        }
        else {
            set_union(b.p1.tags.begin(), b.p1.tags.end(),
                      b.p2.tags.begin(), b.p2.tags.end(),
                      inserter(y, y.begin()));
        }
        return x.size() > y.size();
    }
    );
}

int GetScoreSet(set<string> a, set<string> b) {
    int min1, min2, min3;
    set<string> s1, s2, s3;
    set_intersection(a.begin(), a.end(),
                     b.begin(), b.end(),
                     inserter(s1, s1.begin()));
    set_difference(a.begin(), a.end(),
                   b.begin(), b.end(),
                   inserter(s2, s2.begin()));
    set_difference(b.begin(), b.end(),
                   a.begin(), a.end(),
                   inserter(s3, s3.begin()));
    min1 = s1.size(); min2 = s2.size(); min3 = s3.size();
    return min(min1, min(min2, min3));
}

int GetScore(slide a, slide b) {
    set<string> x, y;
    if (a.p2.id == -1) {
        x = a.p1.tags;
    }
    else {
        set_union(a.p1.tags.begin(), a.p1.tags.end(),
                  a.p2.tags.begin(), a.p2.tags.end(),
                  inserter(x, x.begin()));
    }
    if (b.p2.id == -1) {
        y = b.p1.tags;
    }
    else {
        set_union(b.p1.tags.begin(), b.p1.tags.end(),
                  b.p2.tags.begin(), b.p2.tags.end(),
                  inserter(y, y.begin()));
    }
    return GetScoreSet(x, y);
}

void Verticals() {
    sort(vertical.begin(), vertical.end(), [](photo a, photo b) {
        return a.no_tags > b.no_tags;
    });
    for (int i = 0; i < vertical.size(); i++) {
        if (vertical[i].visited == 1) continue;
        int sol = -1;
        int min_inter = MAX;
        for (int j = i + 1; j < vertical.size(); j++) {
            if (vertical[j].visited == 1) continue;
            set<string> intersection;
            set_intersection(vertical[i].tags.begin(), vertical[i].tags.end(),
                             vertical[j].tags.begin(), vertical[j].tags.end(),
                             inserter(intersection, intersection.begin()));
            int inter = intersection.size();
            if (inter < min_inter) {
                min_inter = inter;
                sol = j;
            }
        }
        if (sol != -1) {
            slide s; s.p1 = vertical[i]; s.p2 = vertical[sol];
            slides.push_back(s);
            vertical[i].visited = 1;
            vertical[sol].visited = 1;
        }
    }
}

void Horizontals() {
    for (const auto & p : horizontal) {
        slide s; s.p1 = p;
        slides.push_back(s);
    }
}

void Sort() {
    for (const auto p : photos) {
        if (p.type == 'H') {
            horizontal.push_back(p);
        }
        else {
            vertical.push_back(p);
        }
    }
}

void Read() {
    fin >> n;
    photos.resize(n);
    for (int i = 0; i < n; i++) {
        photos[i].id = i;
        fin >> photos[i].type;
        fin >> photos[i].no_tags;
        for (int j = 0; j < photos[i].no_tags; j++) {
            string tag;
            fin >> tag;
            photos[i].tags.insert(tag);
        }
    }
}

void Write() {
    int i = 0;

    int size = slideshow.size();
    fout << slideshow.size() << '\n';
    for (const auto & s : slideshow) {
        fout << s.p1.id;
        if (s.p2.id != -1) {
            fout << ' ' << s.p2.id;
        }
        fout << '\n';
        i++;
        cout << (i*100)/size <<"%" << endl;
    }
}


// --- CONFIGURACIÓN DE PÁGINA (MODO PRO HORIZONTAL) ---
#set page(
  paper: "us-letter",
  flipped: true, // Horizontal (Landscape)
  margin: (x: 0.7cm, y: 0.5cm),
  columns: 3,
  // column-gutter: 0.4cm,
)

// --- TIPOGRAFÍA Y PÁRRAFOS ---
#set text(
  font: "JetBrains Mono",
  size: 8.5pt,
  // leading: 0.1em,
)

#set par(
  leading: 0.2em,
  first-line-indent: 0pt,
  spacing: 0.4em,
)

// --- ESTILOS PERSONALIZADOS ---
// Título principal
#show heading.where(level: 1): it => {
  align(center, text(size: 14pt, weight: "black", fill: rgb("#0f172a"), it.body))
  v(0.2cm)
}

// Encabezados de sección (Estilo Tag)
#show heading.where(level: 2): it => {
  v(0.25em)
  block(
    fill: rgb("#e0e7ff"),
    inset: (x: 0.3em, y: 0.1em),
    radius: 2pt,
    width: 100%,
    text(weight: "bold", size: 9pt, fill: rgb("#3730a3"), it.body)
  )
  v(0.15em)
}

// Bloques de código ultra-compactos
#show raw.where(block: true): it => {
  block(
    fill: rgb("#f8fafc"),
    stroke: 0.5pt + rgb("#e2e8f0"),
    inset: (x: 0.3em, y: 0.2em),
    radius: 2pt,
    width: 100%,
    text(size: 7.8pt, it)
  )
}
#set raw(block: true)

// ============== CONTENIDO ==============

= C++17 Interview Cheat Sheet

== vector
```cpp
#include <vector>
vector<int> v, v2(10), v3(10, 5);
v.push_back(10); v.emplace_back(20); v.pop_back();
v.size(); v.empty(); v.front(); v.back();
v[0]; v.at(0); v.begin(); v.end();
sort(v.begin(), v.end()); reverse(v.begin(), v.end());
v.clear();
```

== string
```cpp
#include <string>
string s = "hello";
s.size(); s.length(); s.empty();
s.push_back('a'); s.pop_back();
s.substr(pos, len); s.find("abc");
s.erase(pos, len); s.insert(pos, "abc");
reverse(s.begin(), s.end()); sort(s.begin(), s.end());
stoi(s); stol(s); stoll(s); to_string(123); s += "abc";

// string_view (C++17, non-owning view)
#include <string_view>
string_view sv = s;
sv.remove_prefix(n); sv.remove_suffix(n);
sv.substr(pos, len); // O(1)
```

== maps (unordered / ordered)
```cpp
#include <unordered_map>  // unordered_map
#include <map>            // map, multimap
// unordered_map<int,int> mp;  // O(1) avg
// map<int,int> mp;            // O(log n)
// multimap<int,int> mmp;      // sorted, duplicate keys
mp[key]++; mp[key] = value;
mp.emplace(key, value); mp.count(key); mp.contains(key); mp.find(key); mp.erase(key);
// map only:
  mp.lower_bound(key); mp.upper_bound(key);
// multimap: equal_range(key)
for(auto &[k,v] : mp) { }
```

== sets (unordered / ordered)
```cpp
#include <unordered_set>  // unordered_set
#include <set>            // set, multiset
// unordered_set<int> st;  // O(1) avg
// set<int> st;            // O(log n)
// multiset<int> mst;      // sorted, duplicate values
st.insert(x); st.emplace(x); st.erase(x); 
st.count(x); st.contains(x); st.find(x);
// set only:
  st.lower_bound(x); st.upper_bound(x);
// multiset: equal_range(x)
```

== queues & stacks
```cpp
#include <queue>   // queue, priority_queue
#include <deque>   // deque
#include <stack>   // stack
// queue<int> q;  // or deque<int> dq;
q.push(x); q.emplace(x); q.pop(); q.front(); q.back();
// deque only:
dq.push_front(x); dq.pop_front();

// stack<int> st;
st.push(x); st.emplace(x); st.pop(); st.top(); st.empty();
```

== priority_queue (Heaps)
```cpp
#include <queue>
// Max Heap (default)
priority_queue<int> pq_max;
// Min Heap
priority_queue<int, vector<int>, greater<int>> pq_min;

pq.push(x); pq.emplace(x); pq.pop(); pq.top(); pq.empty();
```

== pairs & tuples
```cpp
#include <utility>  // pair
#include <tuple>    // tuple
pair<int,int> p = {1,2}; // or make_pair(1,2)
p.first; p.second;

tuple<int,int,string> t = make_tuple(1,2,"abc");
get<0>(t); get<1>(t); get<2>(t);
auto [x,y,z] = t; // structured binding
```

== optional (C++17)
```cpp
#include <optional>
optional<int> o = 42; // or nullopt
o.has_value(); o.value(); o.value_or(-1);
*o; if(o) { }
```

== algorithms
```cpp
#include <algorithm>
// Sorting & Searching
sort(v.begin(), v.end()); // rbegin/rend for desc
reverse(v.begin(), v.end());
nth_element(v.begin(), v.begin()+k, v.end()); // O(n) partial sort
binary_search(v.begin(), v.end(), x);
lower_bound(v.begin(), v.end(), x);
upper_bound(v.begin(), v.end(), x);
find(v.begin(), v.end(), x); count(v.begin(), v.end(), x);
min_element(v.begin(), v.end()); max_element(v.begin(), v.end());
next_permutation(v.begin(), v.end());
unique(v.begin(), v.end());
erase(remove(v.begin(), v.end(), x), v.end()); // erase-remove

// Functional
transform(v.begin(), v.end(), v2.begin(), [](int x){ return x*2; });
```

== numeric & utility
```cpp
#include <numeric>  // accumulate, gcd, lcm, iota
#include <iterator> // distance, advance
// Math
min(a,b); max(a,b); swap(a,b); abs(x); clamp(x, lo, hi);
accumulate(v.begin(), v.end(), 0);
gcd(a,b); lcm(a,b); iota(v.begin(), v.end(), 0);

// Iterators
auto it = find(v.begin(), v.end(), x);
distance(v.begin(), it); advance(it, n);
```

== bitset & stringstream
```cpp
#include <bitset>   // bitset
#include <sstream>  // stringstream
bitset<32> b(x);
b.count(); b.test(i); b.set(i); b.reset(i); b.flip(i);

stringstream ss(s); string word;
while(ss >> word) { }
```

== lambda & loops
```cpp
// Lambda
sort(v.begin(), v.end(), [](auto &a, auto &b) {
    return a.second < b.second;
});

// Range loops
for(auto x : v) { }
for(auto &x : v) { }
for(auto &[k,v] : mp) { }

// Structured binding (anywhere)
auto [a,b] = p;
auto [x,y,z] = t;
```

== Complexity Cheat
#table(
  columns: 4,
  align: (center, center, center, center),
  stroke: 0.5pt + rgb("#cbd5e1"),
  fill: (x, y) => if y == 0 { rgb("#f1f5f9") },
  inset: (x: 0.2em, y: 0.1em),
  table.header([*Container*], [*Find*], [*Insert*], [*Erase*]),
  [vector], [O(n)], [O(1)], [O(n)],
  [unord. map/set], [O(1)], [O(1)], [O(1)],
  [map / set], [O(log n)], [O(log n)], [O(log n)],
  [priority_queue], [top O(1)], [O(log n)], [O(log n)],
  [queue / stack], [O(1)], [O(1)], [O(1)],
)

#v(0.3cm)

== Top 15 Interview Tools
#block(
  fill: rgb("#fef3c7"),
  inset: 0.3em,
  radius: 2pt,
  width: 100%,
  [
    *Most Common:* #text(size: 8pt)[
      1. vector, 2. unordered\_map, 3. unordered\_set, 4. string, 5. queue (BFS), 
      6. stack, 7. priority\_queue, 8. pair, 9. sort(), 10. lower\_bound(), 
      11. accumulate(), 12. reverse(), 13. erase(remove()), 14. lambda, 15. deque
    ]
  ]
)

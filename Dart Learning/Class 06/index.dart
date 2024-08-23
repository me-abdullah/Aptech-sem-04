void main() {
  //show("Hello");
  student("abc", name);
}

// var myfunc = (String a) {
//   return a;
// };
// Function show = (String a) {
//   print(a);
// return a;
// };

Function name = (String s) {
  return s;
};
void student(String a, Function n) {
  print("$a ${n("hello")}");
}

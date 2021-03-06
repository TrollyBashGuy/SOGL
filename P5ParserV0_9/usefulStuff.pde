String spaceup (String s, int l) {
  while (s.length()<l)
    s+=" ";
  return s;
}
ArrayList<poppable> spacesquared(ArrayList<poppable> arr) {
  ArrayList<poppable> res = new ArrayList<poppable>();
  int l = 0;
  for (poppable b : arr) {
    if (b.s.length() > l)
      l = b.s.length();
  }
  for (poppable b : arr) {
    res.add(tp(spaceup(b.s, l)));
  }
  return res;
}
String[] spacesquared(String[] arr) {
  String[] res = new String[arr.length];
  int l = 0;
  for (String b : arr) {
    if (b.length() > l)
      l = b.length();
  }
  int i = 0;
  for (String b : arr) {
    res[i] = spaceup(b, l);
    i++;
  }
  return res;
}
String reverseChars(String s, boolean reverse) {
  String res = "";
  int j = 0;
  if (reverse)
    j = s.length()-1;
  String swapChars = "/\\[](){}<>";
  for (int i = 0; i < s.length(); i++) {
    int index = swapChars.indexOf(s.charAt(j));
    if (index == -1)
      res += s.charAt(j);
    else
      res += swapChars.charAt(index ^ 1);
    j+= reverse? -1 : 1;
  }
  return res;
}
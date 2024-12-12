# usage: $ gawk -f reorder_bdfchar.awk < tekuplus_j12r-unicode5.bdf > tekuplus_j12r-unicode.bdf
function compare_index_as_num(k1,v1,k2,v2){
  if (strtonum(k1) < strtonum(k2)) return -1; else return 1;
}
{
  if(/^ENDFONT/){
    asorti(chars, idx_sorted, "compare_index_as_num")
    for(i in idx_sorted){
      print chars[idx_sorted[i]]
    }
    print $0
  }else if(/^ENDCHAR/){
    chars[u]=chars[u]"\n"$0
    in_char=0
    u=0
  }else if(/^STARTCHAR/){
    u=$2
    chars[u]=$0
    in_char=1
    # print "hex="u", dec="strtonum(u)
  }else if( ! in_char){
    print $0
  }else if(in_char){
    line=$0
    if(/^ENCODING/){line="ENCODING "strtonum(u)}
    chars[u]=chars[u]"\n"line
  }
}

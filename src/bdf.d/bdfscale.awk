function d(n){
  return n*factor
}
{
  if($1=="FONT"){
    split($2,param,"-")
    printf "FONT "
    for(i=1;i<=length(param);i++){
      if(i==1){
        printf "%s",param[i]
      }else if(i==8 || i==9){
        printf "-%s",d(param[i])
      }else{
        printf "-%s",param[i]
      }
    }
    printf "\n"
  }else if($1 ~ /^SIZE/){
    printf "%s %d %d %d\n",$1,d($2),$3,$4
  }else if($1 ~ /^(FONTBOUNDINGBOX|BBX)/){
    printf "%s %d %d %d %d\n",$1,d($2),d($3),d($4),d($5)
  }else if($1 ~ /^(PIXEL_SIZE|POINT_SIZE|AVERAGE_WIDTH|X_HEIGHT|QUAD_WIDTH|FONT_DESCENT|FONT_ASCENT)/){
    printf "%s %d\n",$1,d($2)
  }else if($1 ~ /^DWIDTH/){
    printf "%s %d %d\n",$1,d($2),d($3)
  }else{
    print
  }
}

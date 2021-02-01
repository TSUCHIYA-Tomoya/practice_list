def main
  puts "変換したい色のRGB値(例：255,255,255)もしくはカラーコード(例：#FFFFFF, #0c0c0c)を入力し、エンターキーを押してください。"
  $input=gets
  $input.include?("#") ? htmlcolor_to_rgb : rgb_to_htmlcolor
  output
end

def htmlcolor_to_rgb
  rgb_array=$input.delete("#").scan(/.{1,#{2}}/).map{|v| v.to_i(16)}
  $color_code=$input.delete("#").chomp
  $converted=rgb_array
end

def rgb_to_htmlcolor
  rgb_array=$input.split(",").map{|v| v.to_i.to_s(16)}
  $converted = "\#"
  (0..2).each{|n|
    $converted+=
    rgb_array[n].length==2 ? rgb_array[n] : "0#{rgb_array[n]}"
  }
  $color_code=$converted.delete("#")
end

def output
  p $converted
  p "色確認用URL：https://www.colordic.org/colorsample/#{$color_code}"
  p "※5秒後にこのページをブラウザで開きます。"
  system("sleep 5 ; xdg-open https://www.colordic.org/colorsample/#{$color_code}")
end

main






# # 0124-13:48時点
# -----

#   def rgb_to_htmlcolor
#     rgb_array=$input.split(",").map{|v| v.to_i.to_s(16)}
#     $converted = "\#"
#     (0..2).each{|n|
#       rgb_array[n].length==2 ? $converted+=rgb_array[n] : $converted+="0#{rgb_array[n]}"
#     }
#     p $converted
#     p "色確認用URL：https://www.colordic.org/colorsample/#{$converted.delete("#")}"
#     p "※5秒後にこのページをブラウザで開きます。"
#     system("sleep 5 ; xdg-open https://www.colordic.org/colorsample/#{$converted.delete("#")}")
#   end

#   def htmlcolor_to_rgb
#     htmlcolor_array=$input.delete("#").scan(/.{1,#{2}}/).map{|v| v.to_i(16)}
#     p htmlcolor_array
#     p "色確認用URL：https://www.colordic.org/colorsample/#{$input.delete("#")}"
#     p "※5秒後にこのページをブラウザで開きます。"
#     system("sleep 5 ; xdg-open https://www.colordic.org/colorsample/#{$input.delete("#")}")
#   end
#   puts "変換したい色のRGB値(例：255,255,255)もしくはカラーコード(例：#FFFFFF, #0c0c0c)を入力し、エンターキーを押してください。"
#   $input=gets
#   $input.include?("#") ? htmlcolor_to_rgb : rgb_to_htmlcolor
# -----
function hexadecimalToDecimal(hex) {

    const newHex = hex.replace("#", "");
  
    if (newHex.length === 6) {
      return {
        red: parseInt(newHex.slice(0, 2), 16),
        green: parseInt(newHex.slice(2, 4), 16),
        blue: parseInt(newHex.slice(4, 6), 16),
      };
    }
    return {
      red: parseInt(newHex[0] + newHex[0], 16),
      green: parseInt(newHex[1] + newHex[1], 16),
      blue: parseInt(newHex[2] + newHex[2], 16),
    };
  }
  
  console.log(hexadecimalToDecimal("#FF9933"));
  console.log(hexadecimalToDecimal("#ff9933")); 
  console.log(hexadecimalToDecimal("#fff")); 
  console.log(hexadecimalToDecimal("#000"))
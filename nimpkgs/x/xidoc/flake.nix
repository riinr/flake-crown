{
  description = ''A consistent markup language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."xidoc-master".url = "path:./master";
  inputs."xidoc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2020_3_11".url = "path:./2020_3_11";
  inputs."xidoc-2020_3_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2020_3_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_20".url = "path:./2021_10_20";
  inputs."xidoc-2021_10_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_21".url = "path:./2021_10_21";
  inputs."xidoc-2021_10_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_22".url = "path:./2021_10_22";
  inputs."xidoc-2021_10_22".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_22".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_23".url = "path:./2021_10_23";
  inputs."xidoc-2021_10_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_24".url = "path:./2021_10_24";
  inputs."xidoc-2021_10_24".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_24".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_10_26".url = "path:./2021_10_26";
  inputs."xidoc-2021_10_26".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_10_26".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_13".url = "path:./2021_11_13";
  inputs."xidoc-2021_11_13".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_13".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_15".url = "path:./2021_11_15";
  inputs."xidoc-2021_11_15".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_15".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_16".url = "path:./2021_11_16";
  inputs."xidoc-2021_11_16".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_16".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_20".url = "path:./2021_11_20";
  inputs."xidoc-2021_11_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_21".url = "path:./2021_11_21";
  inputs."xidoc-2021_11_21".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_21".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_23".url = "path:./2021_11_23";
  inputs."xidoc-2021_11_23".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_23".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_25".url = "path:./2021_11_25";
  inputs."xidoc-2021_11_25".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_25".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_27".url = "path:./2021_11_27";
  inputs."xidoc-2021_11_27".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_27".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_11_8".url = "path:./2021_11_8";
  inputs."xidoc-2021_11_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_11_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2021_12_19".url = "path:./2021_12_19";
  inputs."xidoc-2021_12_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2021_12_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_1_30".url = "path:./2022_1_30";
  inputs."xidoc-2022_1_30".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_1_30".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_19".url = "path:./2022_2_19";
  inputs."xidoc-2022_2_19".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_19".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_20".url = "path:./2022_2_20";
  inputs."xidoc-2022_2_20".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_20".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."xidoc-2022_2_6".url = "path:./2022_2_6";
  inputs."xidoc-2022_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."xidoc-2022_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
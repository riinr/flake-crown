{
  description = ''Simple package for query HTML/XML elements using a CSS3 or jQuery-like selector syntax'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."q-master".url = "path:./master";
  inputs."q-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_2".url = "path:./0_0_2";
  inputs."q-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_3".url = "path:./0_0_3";
  inputs."q-0_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_4".url = "path:./0_0_4";
  inputs."q-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_5".url = "path:./0_0_5";
  inputs."q-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_6".url = "path:./0_0_6";
  inputs."q-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_7".url = "path:./0_0_7";
  inputs."q-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."q-0_0_8".url = "path:./0_0_8";
  inputs."q-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."q-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}
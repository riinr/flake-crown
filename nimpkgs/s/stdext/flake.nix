{
  description = ''Extends stdlib make it easy on some case'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."stdext-master".url = "path:./master";
  inputs."stdext-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_4".url = "path:./0_0_4";
  inputs."stdext-0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_5".url = "path:./0_0_5";
  inputs."stdext-0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_6".url = "path:./0_0_6";
  inputs."stdext-0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_7".url = "path:./0_0_7";
  inputs."stdext-0_0_7".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_7".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-0_0_8".url = "path:./0_0_8";
  inputs."stdext-0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_10".url = "path:./v0_0_10";
  inputs."stdext-v0_0_10".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_10".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_11".url = "path:./v0_0_11";
  inputs."stdext-v0_0_11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_12".url = "path:./v0_0_12";
  inputs."stdext-v0_0_12".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_12".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_4".url = "path:./v0_0_4";
  inputs."stdext-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_8".url = "path:./v0_0_8";
  inputs."stdext-v0_0_8".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_8".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stdext-v0_0_9".url = "path:./v0_0_9";
  inputs."stdext-v0_0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stdext-v0_0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
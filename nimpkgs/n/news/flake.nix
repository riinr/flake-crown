{
  description = ''Easy websocket with chronos support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."news-master".url = "path:./master";
  inputs."news-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_2".url = "path:./0_2";
  inputs."news-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_3".url = "path:./0_3";
  inputs."news-0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_4".url = "path:./0_4";
  inputs."news-0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."news-0_5".url = "path:./0_5";
  inputs."news-0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."news-0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
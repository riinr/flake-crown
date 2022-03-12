{
  description = ''Spurdification library and CLI'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."spurdify-master".url = "path:./master";
  inputs."spurdify-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-0_0_2".url = "path:./0_0_2";
  inputs."spurdify-0_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-0_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_4".url = "path:./v0_0_4";
  inputs."spurdify-v0_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_5".url = "path:./v0_0_5";
  inputs."spurdify-v0_0_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."spurdify-v0_0_6".url = "path:./v0_0_6";
  inputs."spurdify-v0_0_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."spurdify-v0_0_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
{
  description = ''apache arrow and parquet c api bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimarrow_glib-master".url = "path:./master";
  inputs."nimarrow_glib-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow_glib-v0_1_1".url = "path:./v0_1_1";
  inputs."nimarrow_glib-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow_glib-v0_1_2".url = "path:./v0_1_2";
  inputs."nimarrow_glib-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimarrow_glib-v0_1_3".url = "path:./v0_1_3";
  inputs."nimarrow_glib-v0_1_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimarrow_glib-v0_1_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
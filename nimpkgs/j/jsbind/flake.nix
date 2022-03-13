{
  description = ''Define bindings to JavaScript and Emscripten'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."jsbind-master".dir   = "master";
  inputs."jsbind-master".owner = "nim-nix-pkgs";
  inputs."jsbind-master".ref   = "master";
  inputs."jsbind-master".repo  = "jsbind";
  inputs."jsbind-master".type  = "github";
  inputs."jsbind-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jsbind-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
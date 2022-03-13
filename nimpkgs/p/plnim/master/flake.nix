{
  description = ''Language Handler for executing Nim inside postgres as a procedural language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-plnim-master.flake = false;
  inputs.src-plnim-master.owner = "luisacosta828";
  inputs.src-plnim-master.ref   = "refs/heads/master";
  inputs.src-plnim-master.repo  = "plnim";
  inputs.src-plnim-master.type  = "github";
  
  inputs."pgxcrown".owner = "nim-nix-pkgs";
  inputs."pgxcrown".ref   = "master";
  inputs."pgxcrown".repo  = "pgxcrown";
  inputs."pgxcrown".type  = "github";
  inputs."pgxcrown".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pgxcrown".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-plnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-plnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Machine learning library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mentat-master.flake = false;
  inputs.src-mentat-master.ref   = "refs/heads/master";
  inputs.src-mentat-master.owner = "ruivieira";
  inputs.src-mentat-master.repo  = "nim-mentat";
  inputs.src-mentat-master.type  = "github";
  
  inputs."science".owner = "nim-nix-pkgs";
  inputs."science".ref   = "master";
  inputs."science".repo  = "science";
  inputs."science".dir   = "v0_2_2";
  inputs."science".type  = "github";
  inputs."science".inputs.nixpkgs.follows = "nixpkgs";
  inputs."science".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mentat-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mentat-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
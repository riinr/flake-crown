{
  description = ''Yet another PCRE library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nre-0_4_0.flake = false;
  inputs.src-nre-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-nre-0_4_0.owner = "flaviut";
  inputs.src-nre-0_4_0.repo  = "nre";
  inputs.src-nre-0_4_0.type  = "github";
  
  inputs."optional_t".owner = "nim-nix-pkgs";
  inputs."optional_t".ref   = "master";
  inputs."optional_t".repo  = "optional_t";
  inputs."optional_t".dir   = "1_2_0";
  inputs."optional_t".type  = "github";
  inputs."optional_t".inputs.nixpkgs.follows = "nixpkgs";
  inputs."optional_t".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nre-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nre-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
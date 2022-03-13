{
  description = ''A postgres DB adapter for nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pdba-v0_2_2.flake = false;
  inputs.src-pdba-v0_2_2.owner = "misebox";
  inputs.src-pdba-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-pdba-v0_2_2.repo  = "pdba";
  inputs.src-pdba-v0_2_2.type  = "github";
  
  inputs."yaml".owner = "nim-nix-pkgs";
  inputs."yaml".ref   = "master";
  inputs."yaml".repo  = "yaml";
  inputs."yaml".type  = "github";
  inputs."yaml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."yaml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."ndb".owner = "nim-nix-pkgs";
  inputs."ndb".ref   = "master";
  inputs."ndb".repo  = "ndb";
  inputs."ndb".type  = "github";
  inputs."ndb".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ndb".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pdba-v0_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-pdba-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Command-line utility for Tangling of Org mode documents'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ntangle-v0_6_4.flake = false;
  inputs.src-ntangle-v0_6_4.owner = "OrgTangle";
  inputs.src-ntangle-v0_6_4.ref   = "v0_6_4";
  inputs.src-ntangle-v0_6_4.repo  = "ntangle";
  inputs.src-ntangle-v0_6_4.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ntangle-v0_6_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ntangle-v0_6_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
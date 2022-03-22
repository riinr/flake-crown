{
  description = ''Advanced logging library for Nim with structured logging, formatters, filters and writers.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-omnilog-master.flake = false;
  inputs.src-omnilog-master.owner = "nim-appkit";
  inputs.src-omnilog-master.ref   = "master";
  inputs.src-omnilog-master.repo  = "omnilog";
  inputs.src-omnilog-master.type  = "github";
  
  inputs."values".owner = "nim-nix-pkgs";
  inputs."values".ref   = "master";
  inputs."values".repo  = "values";
  inputs."values".dir   = "0_1_1";
  inputs."values".type  = "github";
  inputs."values".inputs.nixpkgs.follows = "nixpkgs";
  inputs."values".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-omnilog-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-omnilog-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
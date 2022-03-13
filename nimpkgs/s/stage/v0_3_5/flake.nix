{
  description = ''nim tasks apply to git hooks'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-stage-v0_3_5.flake = false;
  inputs.src-stage-v0_3_5.owner = "bung87";
  inputs.src-stage-v0_3_5.ref   = "refs/tags/v0.3.5";
  inputs.src-stage-v0_3_5.repo  = "stage";
  inputs.src-stage-v0_3_5.type  = "github";
  
  inputs."shell".owner = "nim-nix-pkgs";
  inputs."shell".ref   = "master";
  inputs."shell".repo  = "shell";
  inputs."shell".type  = "github";
  inputs."shell".inputs.nixpkgs.follows = "nixpkgs";
  inputs."shell".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-stage-v0_3_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-stage-v0_3_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
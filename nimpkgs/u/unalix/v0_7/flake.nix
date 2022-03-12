{
  description = ''Small, dependency-free, fast Nim package (and CLI tool) for removing tracking fields from URLs.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-unalix-v0_7.flake = false;
  inputs.src-unalix-v0_7.owner = "AmanoTeam";
  inputs.src-unalix-v0_7.ref   = "refs/tags/v0.7";
  inputs.src-unalix-v0_7.repo  = "Unalix-nim";
  inputs.src-unalix-v0_7.type  = "github";
  
  inputs."htmlunescape".owner = "nim-nix-pkgs";
  inputs."htmlunescape".ref   = "master";
  inputs."htmlunescape".repo  = "htmlunescape";
  inputs."htmlunescape".type  = "github";
  inputs."htmlunescape".inputs.nixpkgs.follows = "nixpkgs";
  inputs."htmlunescape".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-unalix-v0_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-unalix-v0_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
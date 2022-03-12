{
  description = ''github-release package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github_release-v0_1_0-alpha.flake = false;
  inputs.src-github_release-v0_1_0-alpha.owner = "kdheepak";
  inputs.src-github_release-v0_1_0-alpha.ref   = "refs/tags/v0.1.0-alpha";
  inputs.src-github_release-v0_1_0-alpha.repo  = "github-release";
  inputs.src-github_release-v0_1_0-alpha.type  = "github";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github_release-v0_1_0-alpha"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-github_release-v0_1_0-alpha";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
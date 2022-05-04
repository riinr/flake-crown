{
  description = ''Dog API CLI app'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dogapi_cli-v1_0_0.flake = false;
  inputs.src-dogapi_cli-v1_0_0.ref   = "refs/tags/v1.0.0";
  inputs.src-dogapi_cli-v1_0_0.owner = "thechampagne";
  inputs.src-dogapi_cli-v1_0_0.repo  = "dogapi-cli";
  inputs.src-dogapi_cli-v1_0_0.type  = "github";
  
  inputs."dogapi".owner = "nim-nix-pkgs";
  inputs."dogapi".ref   = "master";
  inputs."dogapi".repo  = "dogapi";
  inputs."dogapi".dir   = "v1_0_0";
  inputs."dogapi".type  = "github";
  inputs."dogapi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dogapi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dogapi_cli-v1_0_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dogapi_cli-v1_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
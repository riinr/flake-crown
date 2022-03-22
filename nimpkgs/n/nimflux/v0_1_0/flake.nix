{
  description = ''InfluxDB client library.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimflux-v0_1_0.flake = false;
  inputs.src-nimflux-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-nimflux-v0_1_0.owner = "tdely";
  inputs.src-nimflux-v0_1_0.repo  = "nimflux";
  inputs.src-nimflux-v0_1_0.type  = "github";
  
  inputs."coverage".owner = "nim-nix-pkgs";
  inputs."coverage".ref   = "master";
  inputs."coverage".repo  = "coverage";
  inputs."coverage".dir   = "";
  inputs."coverage".type  = "github";
  inputs."coverage".inputs.nixpkgs.follows = "nixpkgs";
  inputs."coverage".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimflux-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimflux-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
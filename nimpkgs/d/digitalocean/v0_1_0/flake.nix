{
  description = ''Wrapper for DigitalOcean HTTP API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-digitalocean-v0_1_0.flake = false;
  inputs.src-digitalocean-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-digitalocean-v0_1_0.owner = "treeform";
  inputs.src-digitalocean-v0_1_0.repo  = "digitalocean";
  inputs.src-digitalocean-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-digitalocean-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-digitalocean-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
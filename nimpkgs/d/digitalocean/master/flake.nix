{
  description = ''Wrapper for DigitalOcean HTTP API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-digitalocean-master.flake = false;
  inputs.src-digitalocean-master.ref   = "refs/heads/master";
  inputs.src-digitalocean-master.owner = "treeform";
  inputs.src-digitalocean-master.repo  = "digitalocean";
  inputs.src-digitalocean-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-digitalocean-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-digitalocean-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
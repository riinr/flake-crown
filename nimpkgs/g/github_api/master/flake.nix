{
  description = ''Connector for the GitHub API v3'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github_api-master.flake = false;
  inputs.src-github_api-master.owner = "watzon";
  inputs.src-github_api-master.ref   = "master";
  inputs.src-github_api-master.repo  = "github-api-nim";
  inputs.src-github_api-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github_api-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-github_api-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
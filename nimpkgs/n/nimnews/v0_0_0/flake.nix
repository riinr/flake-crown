{
  description = ''Immature Newsgroup NNTP server using SQLite as backend'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimnews-v0_0_0.flake = false;
  inputs.src-nimnews-v0_0_0.owner = "mildred";
  inputs.src-nimnews-v0_0_0.ref   = "v0_0_0";
  inputs.src-nimnews-v0_0_0.repo  = "nimnews";
  inputs.src-nimnews-v0_0_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimnews-v0_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimnews-v0_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''Lightweight audio mixer for games'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cmixer-master.flake = false;
  inputs.src-cmixer-master.owner = "rxi";
  inputs.src-cmixer-master.ref   = "refs/heads/master";
  inputs.src-cmixer-master.repo  = "cmixer-nim";
  inputs.src-cmixer-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cmixer-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cmixer-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
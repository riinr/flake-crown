{
  description = ''interactive command prompt'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-cmd-master.flake = false;
  inputs.src-cmd-master.ref   = "refs/heads/master";
  inputs.src-cmd-master.owner = "samdmarshall";
  inputs.src-cmd-master.repo  = "cmd.nim";
  inputs.src-cmd-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-cmd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-cmd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
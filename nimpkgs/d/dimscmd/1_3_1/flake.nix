{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-1_3_1.flake = false;
  inputs.src-dimscmd-1_3_1.owner = "ire4ever1190";
  inputs.src-dimscmd-1_3_1.ref   = "refs/tags/1.3.1";
  inputs.src-dimscmd-1_3_1.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-1_3_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_3_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-1_3_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
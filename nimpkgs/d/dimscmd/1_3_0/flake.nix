{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-1_3_0.flake = false;
  inputs.src-dimscmd-1_3_0.ref   = "refs/tags/1.3.0";
  inputs.src-dimscmd-1_3_0.owner = "ire4ever1190";
  inputs.src-dimscmd-1_3_0.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-1_3_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-1_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
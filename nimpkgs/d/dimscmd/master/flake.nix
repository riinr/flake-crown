{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-master.flake = false;
  inputs.src-dimscmd-master.owner = "ire4ever1190";
  inputs.src-dimscmd-master.ref   = "refs/heads/master";
  inputs.src-dimscmd-master.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-master.type  = "github";
  
  inputs."dimscord".dir   = "nimpkgs/d/dimscord";
  inputs."dimscord".owner = "riinr";
  inputs."dimscord".ref   = "flake-pinning";
  inputs."dimscord".repo  = "flake-nimble";
  inputs."dimscord".type  = "github";
  inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
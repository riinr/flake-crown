{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-1_2_2.flake = false;
  inputs.src-dimscmd-1_2_2.owner = "ire4ever1190";
  inputs.src-dimscmd-1_2_2.ref   = "refs/tags/1.2.2";
  inputs.src-dimscmd-1_2_2.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-1_2_2.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_2_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-1_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
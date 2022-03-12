{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-0_2_1.flake = false;
  inputs.src-dimscmd-0_2_1.owner = "ire4ever1190";
  inputs.src-dimscmd-0_2_1.ref   = "refs/tags/0.2.1";
  inputs.src-dimscmd-0_2_1.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-0_2_1.type  = "github";
  
  inputs."dimscord".owner = "nim-nix-pkgs";
  inputs."dimscord".ref   = "master";
  inputs."dimscord".repo  = "dimscord";
  inputs."dimscord".type  = "github";
  inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-0_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-0_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
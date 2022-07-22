{
  description = ''A command handler for the dimscord discord library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dimscmd-1_3_2.flake = false;
  inputs.src-dimscmd-1_3_2.ref   = "refs/tags/1.3.2";
  inputs.src-dimscmd-1_3_2.owner = "ire4ever1190";
  inputs.src-dimscmd-1_3_2.repo  = "dimscordCommandHandler";
  inputs.src-dimscmd-1_3_2.type  = "github";
  
  inputs."dimscord".owner = "nim-nix-pkgs";
  inputs."dimscord".ref   = "master";
  inputs."dimscord".repo  = "dimscord";
  inputs."dimscord".dir   = "v1_3_0";
  inputs."dimscord".type  = "github";
  inputs."dimscord".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dimscord".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dimscmd-1_3_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-dimscmd-1_3_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
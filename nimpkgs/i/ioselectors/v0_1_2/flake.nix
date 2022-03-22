{
  description = ''Selectors extension.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ioselectors-v0_1_2.flake = false;
  inputs.src-ioselectors-v0_1_2.ref   = "refs/tags/v0.1.2";
  inputs.src-ioselectors-v0_1_2.owner = "xflywind";
  inputs.src-ioselectors-v0_1_2.repo  = "ioselectors";
  inputs.src-ioselectors-v0_1_2.type  = "github";
  
  inputs."wepoll".owner = "nim-nix-pkgs";
  inputs."wepoll".ref   = "master";
  inputs."wepoll".repo  = "wepoll";
  inputs."wepoll".dir   = "v0_1_0";
  inputs."wepoll".type  = "github";
  inputs."wepoll".inputs.nixpkgs.follows = "nixpkgs";
  inputs."wepoll".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."timerwheel".owner = "nim-nix-pkgs";
  inputs."timerwheel".ref   = "master";
  inputs."timerwheel".repo  = "timerwheel";
  inputs."timerwheel".dir   = "v0_1_2";
  inputs."timerwheel".type  = "github";
  inputs."timerwheel".inputs.nixpkgs.follows = "nixpkgs";
  inputs."timerwheel".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ioselectors-v0_1_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-ioselectors-v0_1_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
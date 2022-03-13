{
  description = ''A comprehensive toolkit for all your testing needs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-testutils-0_4_0.flake = false;
  inputs.src-testutils-0_4_0.owner = "status-im";
  inputs.src-testutils-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-testutils-0_4_0.repo  = "nim-testutils";
  inputs.src-testutils-0_4_0.type  = "github";
  
  inputs."https://github.com/status-im/nim-unittest2.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/status-im/nim-unittest2.git".ref   = "master";
  inputs."https://github.com/status-im/nim-unittest2.git".repo  = "https://github.com/status-im/nim-unittest2.git";
  inputs."https://github.com/status-im/nim-unittest2.git".type  = "github";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-unittest2.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-testutils-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-testutils-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
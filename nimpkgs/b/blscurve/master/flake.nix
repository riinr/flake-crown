{
  description = ''Nim implementation of  Barreto-Lynn-Scott (BLS) curve BLS12-381.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-blscurve-master.flake = false;
  inputs.src-blscurve-master.owner = "status-im";
  inputs.src-blscurve-master.ref   = "refs/heads/master";
  inputs.src-blscurve-master.repo  = "nim-blscurve";
  inputs.src-blscurve-master.type  = "github";
  
  inputs."nimcrypto".owner = "nim-nix-pkgs";
  inputs."nimcrypto".ref   = "master";
  inputs."nimcrypto".repo  = "nimcrypto";
  inputs."nimcrypto".type  = "github";
  inputs."nimcrypto".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcrypto".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stew".owner = "nim-nix-pkgs";
  inputs."stew".ref   = "master";
  inputs."stew".repo  = "stew";
  inputs."stew".type  = "github";
  inputs."stew".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stew".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."https://github.com/status-im/nim-taskpools.git".owner = "nim-nix-pkgs";
  inputs."https://github.com/status-im/nim-taskpools.git".ref   = "master";
  inputs."https://github.com/status-im/nim-taskpools.git".repo  = "https://github.com/status-im/nim-taskpools.git";
  inputs."https://github.com/status-im/nim-taskpools.git".type  = "github";
  inputs."https://github.com/status-im/nim-taskpools.git".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/status-im/nim-taskpools.git".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-blscurve-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-blscurve-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
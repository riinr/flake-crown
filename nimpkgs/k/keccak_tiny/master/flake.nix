{
  description = ''A wrapper for the keccak-tiny C library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-keccak_tiny-master.flake = false;
  inputs.src-keccak_tiny-master.ref   = "refs/heads/master";
  inputs.src-keccak_tiny-master.owner = "status-im";
  inputs.src-keccak_tiny-master.repo  = "nim-keccak-tiny";
  inputs.src-keccak_tiny-master.type  = "github";
  
  inputs."ranges".owner = "nim-nix-pkgs";
  inputs."ranges".ref   = "master";
  inputs."ranges".repo  = "ranges";
  inputs."ranges".dir   = "";
  inputs."ranges".type  = "github";
  inputs."ranges".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ranges".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-keccak_tiny-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-keccak_tiny-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
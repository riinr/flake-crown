{
  description = ''Filesystem in userspace (FUSE) for Nim (for reactor.nim library)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-reactorfuse-master.flake = false;
  inputs.src-reactorfuse-master.owner = "zielmicha";
  inputs.src-reactorfuse-master.ref   = "refs/heads/master";
  inputs.src-reactorfuse-master.repo  = "reactorfuse";
  inputs.src-reactorfuse-master.type  = "github";
  
  inputs."reactor".owner = "nim-nix-pkgs";
  inputs."reactor".ref   = "master";
  inputs."reactor".repo  = "reactor";
  inputs."reactor".type  = "github";
  inputs."reactor".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-reactorfuse-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-reactorfuse-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''A container runtime written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nicoru-develop.flake = false;
  inputs.src-nicoru-develop.owner = "fox0430";
  inputs.src-nicoru-develop.ref   = "refs/heads/develop";
  inputs.src-nicoru-develop.repo  = "nicoru";
  inputs.src-nicoru-develop.type  = "github";
  
  inputs."https://github.com/def-/nim-syscall".dir   = "nimpkgs/h/https://github.com/def-/nim-syscall";
  inputs."https://github.com/def-/nim-syscall".owner = "riinr";
  inputs."https://github.com/def-/nim-syscall".ref   = "flake-pinning";
  inputs."https://github.com/def-/nim-syscall".repo  = "flake-nimble";
  inputs."https://github.com/def-/nim-syscall".type  = "github";
  inputs."https://github.com/def-/nim-syscall".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/def-/nim-syscall".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."seccomp".dir   = "nimpkgs/s/seccomp";
  inputs."seccomp".owner = "riinr";
  inputs."seccomp".ref   = "flake-pinning";
  inputs."seccomp".repo  = "flake-nimble";
  inputs."seccomp".type  = "github";
  inputs."seccomp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."seccomp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nicoru-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nicoru-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
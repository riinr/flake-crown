{
  description = ''MongoDB driver in pure Nim language with synchronous and asynchronous I/O support'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimongo-master.flake = false;
  inputs.src-nimongo-master.owner = "SSPkrolik";
  inputs.src-nimongo-master.ref   = "refs/heads/master";
  inputs.src-nimongo-master.repo  = "nimongo";
  inputs.src-nimongo-master.type  = "github";
  
  inputs."scram".owner = "nim-nix-pkgs";
  inputs."scram".ref   = "master";
  inputs."scram".repo  = "scram";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimongo-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimongo-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
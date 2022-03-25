{
  description = ''High-level Nim bindings for userspace SCTP implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-sctp-master.flake = false;
  inputs.src-sctp-master.ref   = "refs/heads/master";
  inputs.src-sctp-master.owner = "metacontainer";
  inputs.src-sctp-master.repo  = "sctp.nim";
  inputs.src-sctp-master.type  = "github";
  
  inputs."reactor".owner = "nim-nix-pkgs";
  inputs."reactor".ref   = "master";
  inputs."reactor".repo  = "reactor";
  inputs."reactor".dir   = "v0_5_0";
  inputs."reactor".type  = "github";
  inputs."reactor".inputs.nixpkgs.follows = "nixpkgs";
  inputs."reactor".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-sctp-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-sctp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
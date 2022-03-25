{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpx-master.flake = false;
  inputs.src-httpx-master.ref   = "refs/heads/master";
  inputs.src-httpx-master.owner = "xflywind";
  inputs.src-httpx-master.repo  = "httpx";
  inputs.src-httpx-master.type  = "github";
  
  inputs."ioselectors".owner = "nim-nix-pkgs";
  inputs."ioselectors".ref   = "master";
  inputs."ioselectors".repo  = "ioselectors";
  inputs."ioselectors".dir   = "v0_1_8";
  inputs."ioselectors".type  = "github";
  inputs."ioselectors".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ioselectors".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpx-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-httpx-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
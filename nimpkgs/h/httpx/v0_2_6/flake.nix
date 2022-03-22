{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpx-v0_2_6.flake = false;
  inputs.src-httpx-v0_2_6.ref   = "refs/tags/v0.2.6";
  inputs.src-httpx-v0_2_6.owner = "xflywind";
  inputs.src-httpx-v0_2_6.repo  = "httpx";
  inputs.src-httpx-v0_2_6.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpx-v0_2_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpx-v0_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
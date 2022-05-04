{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpbeast-v0_3_0.flake = false;
  inputs.src-httpbeast-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-httpbeast-v0_3_0.owner = "dom96";
  inputs.src-httpbeast-v0_3_0.repo  = "httpbeast";
  inputs.src-httpbeast-v0_3_0.type  = "github";
  
  inputs."github-iffy-asynctools".owner = "nim-nix-pkgs";
  inputs."github-iffy-asynctools".ref   = "master";
  inputs."github-iffy-asynctools".repo  = "github-iffy-asynctools";
  inputs."github-iffy-asynctools".dir   = "master";
  inputs."github-iffy-asynctools".type  = "github";
  inputs."github-iffy-asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github-iffy-asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-v0_3_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-httpbeast-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
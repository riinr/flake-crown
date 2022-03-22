{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpbeast-master.flake = false;
  inputs.src-httpbeast-master.owner = "dom96";
  inputs.src-httpbeast-master.ref   = "master";
  inputs.src-httpbeast-master.repo  = "httpbeast";
  inputs.src-httpbeast-master.type  = "github";
  
  inputs."asynctools".owner = "nim-nix-pkgs";
  inputs."asynctools".ref   = "master";
  inputs."asynctools".repo  = "asynctools";
  inputs."asynctools".dir   = "";
  inputs."asynctools".type  = "github";
  inputs."asynctools".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asynctools".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpbeast-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpbeast-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
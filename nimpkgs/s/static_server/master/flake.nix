{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-static_server-master.flake = false;
  inputs.src-static_server-master.ref   = "refs/heads/master";
  inputs.src-static_server-master.owner = "bung87";
  inputs.src-static_server-master.repo  = "nimhttpd";
  inputs.src-static_server-master.type  = "github";
  
  inputs."finder".owner = "nim-nix-pkgs";
  inputs."finder".ref   = "master";
  inputs."finder".repo  = "finder";
  inputs."finder".dir   = "v0_2_0";
  inputs."finder".type  = "github";
  inputs."finder".inputs.nixpkgs.follows = "nixpkgs";
  inputs."finder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-static_server-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
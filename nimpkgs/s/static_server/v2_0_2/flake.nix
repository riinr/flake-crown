{
  description = ''A tiny static file web server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-static_server-v2_0_2.flake = false;
  inputs.src-static_server-v2_0_2.owner = "bung87";
  inputs.src-static_server-v2_0_2.ref   = "refs/tags/v2.0.2";
  inputs.src-static_server-v2_0_2.repo  = "nimhttpd";
  inputs.src-static_server-v2_0_2.type  = "github";
  
  inputs."https://github.com/bung87/finder".owner = "nim-nix-pkgs";
  inputs."https://github.com/bung87/finder".ref   = "master";
  inputs."https://github.com/bung87/finder".repo  = "https://github.com/bung87/finder";
  inputs."https://github.com/bung87/finder".type  = "github";
  inputs."https://github.com/bung87/finder".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/bung87/finder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-static_server-v2_0_2"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-static_server-v2_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zfblast-v0_1_3.flake = false;
  inputs.src-zfblast-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-zfblast-v0_1_3.owner = "zendbit";
  inputs.src-zfblast-v0_1_3.repo  = "nim.zfblast";
  inputs.src-zfblast-v0_1_3.type  = "github";
  
  inputs."uri3".owner = "nim-nix-pkgs";
  inputs."uri3".ref   = "master";
  inputs."uri3".repo  = "uri3";
  inputs."uri3".dir   = "0_1_4";
  inputs."uri3".type  = "github";
  inputs."uri3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uri3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zfblast-v0_1_3"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-zfblast-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
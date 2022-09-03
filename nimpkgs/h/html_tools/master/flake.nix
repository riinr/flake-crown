{
  description = ''HTML5 Tools for Nim, all Templates, No CSS, No Libs, No JS Framework'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-html_tools-master.flake = false;
  inputs.src-html_tools-master.ref   = "refs/heads/master";
  inputs.src-html_tools-master.owner = "juancarlospaco";
  inputs.src-html_tools-master.repo  = "nim-html-tools";
  inputs.src-html_tools-master.type  = "github";
  
  inputs."contra".owner = "nim-nix-pkgs";
  inputs."contra".ref   = "master";
  inputs."contra".repo  = "contra";
  inputs."contra".dir   = "source";
  inputs."contra".type  = "github";
  inputs."contra".inputs.nixpkgs.follows = "nixpkgs";
  inputs."contra".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-html_tools-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-html_tools-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
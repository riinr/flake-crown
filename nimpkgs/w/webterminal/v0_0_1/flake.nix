{
  description = ''Simple HTML5/Javascript text terminal for embedding an nim app on a web page.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webterminal-v0_0_1.flake = false;
  inputs.src-webterminal-v0_0_1.ref   = "refs/tags/v0.0.1";
  inputs.src-webterminal-v0_0_1.owner = "JohnAD";
  inputs.src-webterminal-v0_0_1.repo  = "webterminal";
  inputs.src-webterminal-v0_0_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webterminal-v0_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-webterminal-v0_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
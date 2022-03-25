{
  description = ''Simple HTML5/Javascript text terminal for embedding an nim app on a web page.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webterminal-v0_0_2.flake = false;
  inputs.src-webterminal-v0_0_2.ref   = "refs/tags/v0.0.2";
  inputs.src-webterminal-v0_0_2.owner = "JohnAD";
  inputs.src-webterminal-v0_0_2.repo  = "webterminal";
  inputs.src-webterminal-v0_0_2.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webterminal-v0_0_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-webterminal-v0_0_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}
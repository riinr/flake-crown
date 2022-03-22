{
  description = ''A pure nim port of the open simplex noise algorithm from Kurt Spencer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-opensimplexnoise-main.flake = false;
  inputs.src-opensimplexnoise-main.owner = "betofloresbaca";
  inputs.src-opensimplexnoise-main.ref   = "main";
  inputs.src-opensimplexnoise-main.repo  = "nim-opensimplexnoise";
  inputs.src-opensimplexnoise-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-opensimplexnoise-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-opensimplexnoise-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
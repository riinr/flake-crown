{
  description = ''dialect of Markdown in pure Nim with focus on HTML output'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-marggers-v0_2_7.flake = false;
  inputs.src-marggers-v0_2_7.owner = "metagn";
  inputs.src-marggers-v0_2_7.ref   = "refs/tags/v0.2.7";
  inputs.src-marggers-v0_2_7.repo  = "marggers";
  inputs.src-marggers-v0_2_7.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_2_7"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-marggers-v0_2_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
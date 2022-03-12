{
  description = ''Erlang/Elixir NIFs for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimler-v4_5.flake = false;
  inputs.src-nimler-v4_5.owner = "wltsmrz";
  inputs.src-nimler-v4_5.ref   = "refs/tags/v4.5";
  inputs.src-nimler-v4_5.repo  = "nimler";
  inputs.src-nimler-v4_5.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_5"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimler-v4_5";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}
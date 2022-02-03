{
  description = ''IUP FFI bindings'';
  inputs.src-niup-3_27_5.flake = false;
  inputs.src-niup-3_27_5.type = "github";
  inputs.src-niup-3_27_5.owner = "dariolah";
  inputs.src-niup-3_27_5.repo = "niup";
  inputs.src-niup-3_27_5.ref = "refs/tags/3.27.5";
  
  outputs = { self, nixpkgs, src-niup-3_27_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-niup-3_27_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}
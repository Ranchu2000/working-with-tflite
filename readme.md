# Fine-Tuning with TFLITE

This guide is built off the example in [TensorFlow Lite On-Device Training Overview](https://colab.research.google.com/github/tensorflow/tensorflow/blob/master/tensorflow/lite/g3doc/examples/on_device_training/overview.ipynb#scrollTo=Diwn1MmkNVeX&uniqifier=1) and has been verified to work with **Python 3.10**.

## Overview

TFLite files are a unique format that combine both custom signatures and model weights. However, there are some important nuances and limitations that are not always clear from the standard documentation.


## Key Points

### 1. Conversion Directionality
- **TensorFlow → TFLite:** You can convert TensorFlow models to TFLite models.
- **TFLite → TensorFlow:** There is no direct conversion; you can only read TFLite files using the Interpreter.
### 2. Model Weights Storage and Subsequent Training
- The weights stored in a TFLite file belong to the TensorFlow model that was originally converted.
- **Implication:** Subsequent training or fine-tuning will not update the TFLite file automatically.
  - **Checkpoint Requirement:** You must save the newly adjusted weights into a checkpoint file.
  - **Weight Origin Distinction:**
    - If your weights come from a **TensorFlow model**, they are saved in the TFLite file.
    - If your weights come from an **Interpreter**, they must be saved separately via a checkpoint.
- **Terminology for Clarity:**
  - **"Fresh" TFLite file:** Generated directly from a TensorFlow model.
  - **Non-"fresh" TFLite file:** Originates from the Interpreter.
- **Restoration:** To restore your model into the Interpreter, either load a "fresh" OR non-"fresh" TFLite file + restore from a weights checkpoint.
### 3. Empirical Observations
- Checkpoints can indeed store the model weights from subsequent training sessions, and when evaluated, the model performance remains consistent.
- However, training from a checkpoint (when using non-"fresh" TFLite file) may not lead to further learning.
### 4. Recommended Workflow for Easy Management
- **Always work with a TensorFlow model for fine-tuning.** The suggested workflow is as follows:
  1. **Create a TensorFlow Model:** Always start with a TensorFlow model.
  2. **Load a "Fresh" TFLite File:** Use an Interpreter to load a "fresh" TFLite file.
  3. **Transfer Tensors:** Move the tensors from the Interpreter back into your TensorFlow model (refer to finetune for transfer)
  4. **Perform Fine-Tuning:** Fine-tune the model using TensorFlow.
  5. **Export New TFLite File:** Convert the updated TensorFlow model into a new "fresh" TFLite file.
- **Advantage:** This approach eliminates the need for managing separate checkpoint files. Subsequent fine-tuning is done entirely on the TensorFlow model, ensuring that the generated TFLite file contains all the necessary information.
---

This README summarises the issues I faced when trying to finetune a TFLite file. Hope this helps someone :)